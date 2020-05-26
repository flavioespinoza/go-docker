package main

import (
    "fmt"
    "github.com/gorilla/mux"
    "log"
    "net/http"
    "os"
    "text/template"
)

var tpl *template.Template

func init() {
    tpl = template.Must(template.ParseGlob("templates/*.gohtml"))
}

func main() {
    r := mux.NewRouter()

    r.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        err := tpl.ExecuteTemplate(os.Stdout, "index.gohtml", 667)
        if err != nil {
            log.Fatalln(err)
        }
    })

    r.HandleFunc("/hello", func(w http.ResponseWriter, r *http.Request) {
        fmt.Fprintf(w, "<h1>Hello from Docker!\n</h1>")
    })

    r.HandleFunc("/hello/{name}", func(w http.ResponseWriter, r *http.Request) {
        vars := mux.Vars(r)
        title := vars["name"]

        fmt.Fprintf(w, "<h1>Hello, %s!\n</h1>", title)
    })

    http.ListenAndServe(":80", r)
}


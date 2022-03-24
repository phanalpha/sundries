use actix_web::{get, web, App, HttpServer};
use regex::Regex;
use serde::Deserialize;

fn dial(wording: &String) -> String {
    [
        ("ABC", "2"),
        ("DEF", "3"),
        ("GHI", "4"),
        ("JKL", "5"),
        ("MNO", "6"),
        ("PQRS", "7"),
        ("TUV", "8"),
        ("WXYZ", "9"),
        (" ", "0"),
        ("^0-9", "1"),
    ]
    .iter()
    .fold(wording.to_uppercase(), |s, (chs, ch)| {
        Regex::new(format!("[{}]", chs).as_str())
            .unwrap()
            .replace_all(s.as_str(), *ch)
            .into_owned()
    })
}

#[derive(Deserialize)]
struct Dial {
    wording: String,
}

#[get("/dial")]
async fn get_dial(d: web::Query<Dial>) -> String {
    dial(&d.wording)
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| App::new().service(get_dial))
        .bind("127.0.0.1:4000")?
        .run()
        .await
}

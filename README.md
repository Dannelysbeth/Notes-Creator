# 📝 Notes Creator

A tiny command-line tool for creating dated Markdown notes using Ruby.

## ✨ Features

* Create Markdown notes from the terminal

* Auto-named files (YYYY-MM-DD.md)

* Custom directories supported

* Automatically creates missing folders

## 📦 Requirements

Ruby ≥ 2.7

No external gems required

## 🚀 Usage
### 1️⃣ Create a note
ruby note.rb "So let's start with Ruby"


Creates:

./2026-01-01.md

### 2️⃣ Save to a directory
ruby note.rb "Meeting notes" notes/daily


Creates:

notes/daily/2026-01-01.md

### 3️⃣ Custom filename
ruby note.rb "Ideas for tomorrow" notes daily_ideas


Creates:

notes/daily/daily_ideas.md

## 🧠 How it works

* First argument → note content

* Second argument → target directory (optional)

* Third argument → filename without extension (optional)

## 📂 Example output
Date: 2026-01-01
Ideas for tomorrow

## 🎯 Motivation

A small learning project focused on:

* Ruby CLI basics

* File handling

* Clean object design

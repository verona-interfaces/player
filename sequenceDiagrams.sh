#!/bin/sh

(
    cd sequenceDiagrams
    plantuml -tsvg *.uml
)
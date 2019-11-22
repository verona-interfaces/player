#!/bin/sh

(
    cd sequenceDiagrams

    # http://plantuml.com/
    plantuml -tsvg *.uml
)
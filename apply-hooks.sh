#!/bin/bash
if [ ! -d ".git" ]; then
    echo "Error: Not a git repository"
    exit 1
fi

template_dir="${HOME}/.git-templates/hooks"
if [ ! -d "${template_dir}" ]; then
    echo "Error: Global hooks directory not found"
    exit 1
fi

cp -r "${template_dir}"/* .git/hooks/
chmod +x .git/hooks/*
echo "Applied global hooks to this repository"


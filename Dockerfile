FROM python:3.9-slim

LABEL "com.github.actions.name"="Lintly-Flake8"
LABEL "com.github.actions.description"="Automatic code reviewer for GitHub PRs."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/grantmcconnaughey/lintly-flake8-github-actions.git"
LABEL "homepage"="https://github.com/grantmcconnaughey/lintly-flake8-github-actions"
LABEL "maintainer"="Grant McConnaughey <grantmcconnaughey@gmail.com>"

RUN pip install --upgrade pip && \
    pip install flake8 lintly==0.6.0 jinja2==2.11.3 markupsafe==2.0.1

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

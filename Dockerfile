FROM hashicorp/terraform:1.9.0

LABEL repository="https://github.com/cybercyst/terraform-pr-commenter" \
      homepage="https://github.com/cybercyst/terraform-pr-commenter" \
      maintainer="Forrest Loomis" \
      com.github.actions.name="Terraform PR Commenter" \
      com.github.actions.description="Adds opinionated comments to a PR from Terraform fmt/init/plan output" \
      com.github.actions.icon="git-pull-request" \
      com.github.actions.color="purple"

RUN apk add --no-cache -q \
      bash \
      curl \
      jq

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

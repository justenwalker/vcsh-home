if  whence terraform > /dev/null; then
  alias tf='terraform'

  tffmt() {
    terraform fmt -recursive .
  }

  tfplan() {
    if [ $(find . -name '*.tf' -maxdepth 1 | wc -l) -gt 0 ]; then
      if whence ansifilter > /dev/null; then
        terraform plan "$@" | tee >( ansifilter > plan.log)
      else
        terraform plan "$@"
      fi
    else
      echo "No terraform files"
    fi
  }

  tfplanout() {
    tfplan "-out=plan.out" "$@"
  }

  tfapply() {
    if [ -r plan.out ]; then
      terraform apply plan.out && rm plan.out
    else
      echo "No plan found"
    fi
  }
fi

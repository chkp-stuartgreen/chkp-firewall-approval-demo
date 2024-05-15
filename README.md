# chkp-firewall-approval-demo
## Check Point - Firewall policy approval demo



This repository is setup to demonstrate a simple policy approval workflow for delegated administration of Check Point security policies.

There are three branches in this scenario
- **main**
  - This is considered a protected part of the policy. In practice, this may be the corporate security policy which covers monitoring, maintenance access or other globally applied rules. Branch protection is configured here so no one can push directly and instead have to go via the staging branch **protected-main**.
- **protected-main**
  - This is the staging branch for changes which involved the main, protected policy environment. Changes are pushed here and a PR must be opened to trigger integration via terraform apply.
- **limited**
  - This is a delegated layer which can be edited entirely by a user with the relevant permissions. These permissions will not allow changes to the main policy (at a CP level). Changes can be pushed directly to this branch and will trigger an apply without approval.

There is a full writeup available here https://medium.com/@stuart-green/check-point-policy-approval-gates-in-ci-cd-859abbf43a85


resource "google_project_iam_custom_role" "custom-role" {
  role_id     = "ComputeAudit"
  title       = "Compute Audit Role"
  description = "A role for compute auditors"
  permissions = split("\n", file("./compute_audit.txt"))
}
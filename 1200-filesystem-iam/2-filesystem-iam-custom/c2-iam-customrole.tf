resource "google_project_iam_custom_role" "custom-role" {
  for_each    = fileset(path.module, "*.txt")
  role_id     = split(".", each.value)[0]
  title       = split(".", each.value)[0]
  description = "A role containing permissions from ${each.value}"
  permissions = split("\n", file(each.value))
}

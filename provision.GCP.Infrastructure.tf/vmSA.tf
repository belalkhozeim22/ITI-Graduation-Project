resource "google_service_account" "manage-sa" {
  account_id   = "manage-sa"
  display_name = "manage Service Account"
}

resource "google_project_iam_binding" "manage-sa-binding" {
  project  = "deploy-application-368815"
  role    = "roles/storage.admin"
  members = ["serviceAccount:${google_service_account.manage-sa.email}"]

}

resource "google_project_iam_binding" "manage-sa-bindig-2" {
  project  = "deploy-application-368815"
  role    = "roles/container.admin"
  members = ["serviceAccount:${google_service_account.manage-sa.email}"]
}

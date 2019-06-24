/**
 * Copyright 2019 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "gsuite_admin_email" {
  description = "The email of a GSuite super admin, used for pulling user directory information *and* sending notifications."
  type        = string
}

variable "network" {
  description = "The name of the network which will be attached to resources."
  type        = string
}

variable "project_id" {
  description = "The ID of an existing Google project where Forseti will be installed"
  type        = string
}

variable "region" {
  description = "The region in which to provision resources."
  type        = string
}

variable "subnetwork" {
  description = "The self link of the subnetwork which will be attached to resources."
  type        = string
}

variable "org_id" {
  description = "GCP Organization ID that Forseti will have purview over"
  type        = string
}

variable "domain" {
  description = "The domain associated with the GCP Organization ID"
  type        = string
}

variable "instance_metadata" {
  description = "Metadata key/value pairs to make available from within the client and server instances."
  type        = map(string)
  default     = {}
}

variable "instance_tags" {
  description = "Tags to assign the client and server instances."
  type        = list(string)
  default     = []
}

variable "private" {
  description = "Private client and server instances (no public IPs)"
  default     = true
  type        = boolean
}

variable "sendgrid_api_key" {
  description = "Sendgrid API key."
  default     = ""
  type        = string
}

variable "forseti_email_sender" {
  description = "Forseti email sender."
  default     = ""
  type        = string
}

variable "forseti_email_recipient" {
  description = "Forseti email recipient."
  default     = ""
  type        = string
}

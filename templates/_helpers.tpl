{{/*
Expand the name of the chart.
*/}}
{{- define "ddhub-client-gateway-api.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "ddhub-client-gateway-api.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "ddhub-client-gateway-api.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "ddhub-client-gateway-api.labels" -}}
helm.sh/chart: {{ include "ddhub-client-gateway-api.chart" . }}
{{ include "ddhub-client-gateway-api.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Values.extraLabels }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "ddhub-client-gateway-api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ddhub-client-gateway-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Common scheduler labels
*/}}
{{- define "ddhub-client-gateway-api.scheduler.labels" -}}
helm.sh/chart: {{ include "ddhub-client-gateway-api.chart" . }}
{{ include "ddhub-client-gateway-api.scheduler.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Values.extraLabels }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Selector scheduler labels
*/}}
{{- define "ddhub-client-gateway-api.scheduler.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ddhub-client-gateway-api.name" . }}-scheduler
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Common ui labels
*/}}
{{- define "ddhub-client-gateway-api.ui.labels" -}}
helm.sh/chart: {{ include "ddhub-client-gateway-api.chart" . }}
{{ include "ddhub-client-gateway-api.ui.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- with .Values.extraLabels }}
{{ toYaml . }}
{{- end }}
{{- end }}

{{/*
Selector ui labels
*/}}
{{- define "ddhub-client-gateway-api.ui.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ddhub-client-gateway-api.name" . }}-ui
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "ddhub-client-gateway-api.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "ddhub-client-gateway-api.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

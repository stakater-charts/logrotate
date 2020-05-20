{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "logrotate.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "logrotate.fullname" -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "logrotate.labels.selector" -}}
app: {{ template "logrotate.name" . }}
group: {{ .Values.logrotate.labels.group }}
provider: {{ .Values.logrotate.labels.provider }}
{{- end -}}

{{- define "logrotate.labels.stakater" -}}
{{ template "logrotate.labels.selector" . }}
version: "{{ .Values.logrotate.labels.version }}"
{{- end -}}

{{- define "logrotate.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}

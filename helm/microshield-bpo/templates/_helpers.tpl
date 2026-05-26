{{- define "microshield-bpo.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "microshield-bpo.fullname" -}}
{{- if .Release.Name -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "microshield-bpo.name" . -}}
{{- end -}}
{{- end -}}

{{- define "microshield-bpo.labels" -}}
app.kubernetes.io/name: {{ include "microshield-bpo.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}

{{- define "microshield-bpo.selectorLabels" -}}
app.kubernetes.io/name: {{ include "microshield-bpo.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "benefits-mgmt-app.labels" -}}
app: {{ .Release.Name }}
app.kubernetes.io/name: benefits-mgmt-app
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/component: internal-tools
app.kubernetes.io/part-of: acme-internal-tools
app.kubernetes.io/managed-by: {{ .Release.Service }}
lightwell.redhat.com/scanned: "true"
lightwell.redhat.com/risk-class: {{ .Values.labels | dig "lightwell.redhat.com/risk-class" "LOW" | quote }}
{{- end -}}

{{- define "benefits-mgmt-app.selectorLabels" -}}
app: {{ .Release.Name }}
app.kubernetes.io/name: benefits-mgmt-app
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "wire-transfer-service.labels" -}}
app: {{ .Release.Name }}
app.kubernetes.io/name: wire-transfer-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/component: payment-processing
app.kubernetes.io/part-of: acme-payment-services
app.kubernetes.io/managed-by: {{ .Release.Service }}
lightwell.redhat.com/scanned: "true"
lightwell.redhat.com/risk-class: {{ .Values.labels | dig "lightwell.redhat.com/risk-class" "HIGH" | quote }}
{{- end -}}

{{- define "wire-transfer-service.selectorLabels" -}}
app: {{ .Release.Name }}
app.kubernetes.io/name: wire-transfer-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

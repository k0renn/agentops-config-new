version: 1
skills_root: {{ .Values.skills.root }}
agent: {{ .Values.skills.agent }}
install:
{{- range .Values.skills.install }}
  - source: {{ .source }}
    skill: {{ .skill }}
{{- if .query }}
    query: {{ .query }}
{{- end }}
{{- end }}

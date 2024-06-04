cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ccu002_01-stroke-hmorrhage---secondary:
    run: ccu002_01-stroke-hmorrhage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  haemorrhagic-ccu002_01-stroke---secondary:
    run: haemorrhagic-ccu002_01-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-hmorrhage---secondary/output
  ccu002_01-stroke-cereb---secondary:
    run: ccu002_01-stroke-cereb---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: haemorrhagic-ccu002_01-stroke---secondary/output
  ischemic-ccu002_01-stroke---secondary:
    run: ischemic-ccu002_01-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-cereb---secondary/output
  ccu002_01-stroke-tia---secondary:
    run: ccu002_01-stroke-tia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ischemic-ccu002_01-stroke---secondary/output
  ccu002_01-stroke-occlus---secondary:
    run: ccu002_01-stroke-occlus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-tia---secondary/output
  ccu002_01-stroke---secondary:
    run: ccu002_01-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-occlus---secondary/output
  ccu002_01-stroke-foville---secondary:
    run: ccu002_01-stroke-foville---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke---secondary/output
  ccu002_01-stroke-millardgubler---secondary:
    run: ccu002_01-stroke-millardgubler---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-foville---secondary/output
  ccu002_01-stroke-webergubler---secondary:
    run: ccu002_01-stroke-webergubler---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-millardgubler---secondary/output
  ccu002_01-stroke-precerebr---secondary:
    run: ccu002_01-stroke-precerebr---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-webergubler---secondary/output
  ccu002_01-stroke-sensory---secondary:
    run: ccu002_01-stroke-sensory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-precerebr---secondary/output
  ccu002_01-stroke-infarct---secondary:
    run: ccu002_01-stroke-infarct---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-sensory---secondary/output
  ccu002_01-stroke-pathology---secondary:
    run: ccu002_01-stroke-pathology---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-infarct---secondary/output
  ccu002_01-stroke-motor---secondary:
    run: ccu002_01-stroke-motor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-pathology---secondary/output
  vertebrobasilar-ccu002_01-stroke---secondary:
    run: vertebrobasilar-ccu002_01-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-motor---secondary/output
  ccu002_01-stroke-puerperium---secondary:
    run: ccu002_01-stroke-puerperium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: vertebrobasilar-ccu002_01-stroke---secondary/output
  right-ccu002_01-stroke---secondary:
    run: right-ccu002_01-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-puerperium---secondary/output
  ccu002_01-stroke-brainstem---secondary:
    run: ccu002_01-stroke-brainstem---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: right-ccu002_01-stroke---secondary/output
  ccu002_01-stroke-infarctn---secondary:
    run: ccu002_01-stroke-infarctn---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-brainstem---secondary/output
  subcortical-ccu002_01-stroke---secondary:
    run: subcortical-ccu002_01-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-infarctn---secondary/output
  ccu002_01-stroke-steno---secondary:
    run: ccu002_01-stroke-steno---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: subcortical-ccu002_01-stroke---secondary/output
  carotid-ccu002_01-stroke---secondary:
    run: carotid-ccu002_01-stroke---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-steno---secondary/output
  ccu002_01-stroke-lacunar---secondary:
    run: ccu002_01-stroke-lacunar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: carotid-ccu002_01-stroke---secondary/output
  ccu002_01-stroke-ganglia---secondary:
    run: ccu002_01-stroke-ganglia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-lacunar---secondary/output
  ccu002_01-stroke-claude's---secondary:
    run: ccu002_01-stroke-claude's---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-ganglia---secondary/output
  ccu002_01-stroke-occlusn---secondary:
    run: ccu002_01-stroke-occlusn---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-claude's---secondary/output
  ccu002_01-stroke-excepted---secondary:
    run: ccu002_01-stroke-excepted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-occlusn---secondary/output
  ccu002_01-stroke-review---secondary:
    run: ccu002_01-stroke-review---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-excepted---secondary/output
  ccu002_01-stroke-indicator---secondary:
    run: ccu002_01-stroke-indicator---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-review---secondary/output
  ccu002_01-stroke-monitoring---secondary:
    run: ccu002_01-stroke-monitoring---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-indicator---secondary/output
  ccu002_01-stroke-sided---secondary:
    run: ccu002_01-stroke-sided---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-monitoring---secondary/output
  ccu002_01-stroke-history---secondary:
    run: ccu002_01-stroke-history---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-sided---secondary/output
  ccu002_01-stroke-wallenberg---secondary:
    run: ccu002_01-stroke-wallenberg---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-history---secondary/output
  ccu002_01-stroke-syndrome---secondary:
    run: ccu002_01-stroke-syndrome---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-wallenberg---secondary/output
  ccu002_01-stroke-improvement---secondary:
    run: ccu002_01-stroke-improvement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-syndrome---secondary/output
  ccu002_01-stroke-selfmanagement---secondary:
    run: ccu002_01-stroke-selfmanagement---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-improvement---secondary/output
  ccu002_01-stroke-amnesia---secondary:
    run: ccu002_01-stroke-amnesia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-selfmanagement---secondary/output
  ccu002_01-stroke-insufficiency---secondary:
    run: ccu002_01-stroke-insufficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-amnesia---secondary/output
  ccu002_01-stroke-fugax---secondary:
    run: ccu002_01-stroke-fugax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-insufficiency---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ccu002_01-stroke-fugax---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

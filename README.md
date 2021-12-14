# CloudTruth Templates Prototype


Uses the cloudtruth CLI to fetch templates for the given project and writes them out to files on disk.

## Usage

The destination file for each template is provided in a directive as the first line of the template.  The directive is stripped _after_ the template is rendered so that you can reference parameters for the target file.  Templates without this line are skipped.  The directive line is of the form:

```
#~ target: /path/to/config.file
```

## Usage

The standard cloudtruth CLI parameters are used to control which templates are processed:

| Parameter | Description | Type | Default | Required |
|-----------|-------------|------|---------|:--------:|
| CLOUDTRUTH_API_KEY | the api key for authenticating to the CloudTruth Rest API | string | n/a | yes |
| CLOUDTRUTH_ENVIRONMENT | the CloudTruth environment to query against | string | `default` | no |
| CLOUDTRUTH_PROJECT | the CloudTruth project to query against | string | `MyFirstProject` | yes |

npmrc:  ## Set up npmrc file. Requires aws CLI.
	$(eval CODEARTIFACT_AUTH_TOKEN ?= `aws codeartifact get-authorization-token --domain lark --domain-owner 509967626473 --query authorizationToken --output text`)
	echo "registry=https://lark-509967626473.d.codeartifact.us-east-1.amazonaws.com/npm/LarkTechnologies/" > .npmrc && \
	echo "//lark-509967626473.d.codeartifact.us-east-1.amazonaws.com/npm/LarkTechnologies/:always-auth=true" >> .npmrc && \
	echo "//lark-509967626473.d.codeartifact.us-east-1.amazonaws.com/npm/LarkTechnologies/:_authToken=${CODEARTIFACT_AUTH_TOKEN}" >> .npmrc

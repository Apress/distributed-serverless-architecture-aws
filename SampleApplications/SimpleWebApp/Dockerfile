FROM public.ecr.aws/lambda/nodejs:14
COPY SampleWebApp.js package*.json ./
RUN npm install
CMD [ "SampleWebApp.handler" ]

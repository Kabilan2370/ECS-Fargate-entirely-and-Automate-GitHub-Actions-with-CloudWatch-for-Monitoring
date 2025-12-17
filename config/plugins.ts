module.exports = {
  upload: {
    config: {
      provider: 'aws-s3',
      providerOptions: {
        region: process.env.AWS_REGION,
        params: {
          Bucket: process.env.AWS_S3_BUCKET,
        },
      },
    },
  },
};

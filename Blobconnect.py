def get_blob_service_client_account_key(self):
    # TODO: Replace <storage-account-name> with your actual storage account name
    account_url = "https://aiaprojectxstorage.blob.core.windows.net"
    shared_access_key = "XuXouuXxRE/LBBpDvc3cp8jS0ufBdKfrjwdrHv1/sb7EiDquK5x002CkMQYBdy33NR+Pvg3oW/i5+AStJSq/vA=="
    credential = shared_access_key

    # Create the BlobServiceClient object
    blob_service_client = BlobServiceClient(account_url, credential=credential)

    return blob_service_client
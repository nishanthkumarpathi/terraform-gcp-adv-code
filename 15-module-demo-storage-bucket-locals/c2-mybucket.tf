module "gcs-bucket-1" {
    source = "./modules/gcs"
    
    /* Trying to Call the Bucket Name Variable from the Module */
    
    bucket_name = "mybucket1"

    /* Setting the Module Local Variable from Module Consumer
    this will not work, as terraform is expecting this to be called locally inside module.*/

    # bucket_name_random = "mybucket1"
}
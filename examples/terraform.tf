terraform {
  required_version = ">= 0.12.1"

  required_providers {
    digitalocean = "~> 1.4"
    random       = "!= 2.1"
    template     = ">= 2.1"
    tls          = "~> 2.0"
    null         = "~> 2.1"
  }

  backend "s3" {
    bucket  = "mybucket"
    key     = "path/to/my/key"
    region  = "us-east-1"
    enabled = true
    options = null
    depth   = 42.55
  }
}

terraform {
  required_version = ">= 0.12"
}

# --- Test strings

  terraform terraform }{}        # not valid
  terraform terraform {{}}       # not valid
  terraform/*  */{}              # not valid
  terraform-{}                   # not valid
  terraforma {}                  # not valid
  /**/terraform{}                # valid
terraform{}      /** asd*/       # valid
q terraform{}                    # not valid
 terraform  ss/*sdf*/ gg {  }    # not valid
 terraform         {   /*sdf*/   # valid
                              }  # valid
            terraform        {   # valid
 version""           /** sdf*/   # not valid
    version="/** sdf*/"          # not valid
    version=""                   # not valid
  version=    ""           #     # valid
   version="==1.11"              # valid
   version   =">=1.11.11-rc0"    # valid
     version="  \"   $asd   "    # not valid

version=    ">=    0.12.0"       # valid
version= ()    ttt " >= 0.12.0 " # not valid
    version= >=0.12.0"       //  # not valid
  version== ">>6.6.6"            # not valid
fversion            =">=0.12.0"  # not valid
 fff version         =">=0.12.0" # not valid
  required_version  =">=0.12.0"  # valid
     required_version ="=0.12.0" # valid
     required_version=="=0.12.0" # not valid
   required_version ="0.12.0"    # valid
            }                    # valid
    terraform   {                # valid
      required_providers     { # # valid
         aws = ">= 2.7.0"        # valid
         aws="2.7.0-rc0"         # valid
         aws42="2.7.0"           # valid
    aws-42    ="2.7.0"    /**/   # valid
     aws42=="2.7.0"              # not valid
     aws42="=2.7.0"              # valid
    aws- 42    ="2.7.0"          # not valid
 42aws = ">= 2.7.0"              # not valid
   aw$ = ">= 2.7.0"              # not valid
    aws ">= aws"                 # not valid
      }         /**/             # valid
    }                            # valid
terraform {                      # valid
  backend "3s" {}                # not valid
  backend "s-" {}                # valid
  backend "s3-" {}               # not valid
  backend "s-3" {}               # valid
  backend "3" {}                 # not valid
}                                # valid

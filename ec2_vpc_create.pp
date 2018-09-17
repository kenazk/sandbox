genesis::aws::vpc { 'nyx-vpc-test':
  ensure               => present,
  region               => "us-west-1",
  cidr_block           => "10.90.0.10/24",
  tags => {
      'created_by' => 'john.mccabe@puppet.com',
      'department' => 'engineering',
      'project' => 'incubator',
      'lifetime' => '1h'
  },
  enable_dns_hostnames => true,
  enable_dns_support   => true,
} ->
notice("Created VPC: ${resource(Genesis::Aws::Vpc['nyx-vpc-test']).vpc_id}\n")

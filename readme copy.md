#if a VPC has to be created, make changes to the following files.
1. Uncomment igw.tf
2. Uncomment route_table.tf
3. Comment lines 1-6 in vpc.tf
4. Ucomment lines 9-19 in vpc.tf
5. Comment lines 1-4 in subnet.tf
6. Uncomment lines 9-23 in subnet.tf
7. Comment lines 4,30 in security_group.tf
8. Uncomment lines 6,32 in security_group.tf
9. Comment lines 4 and 33 in ec2.tf
10. Uncomment limes 6 and 35 in ec2.tf
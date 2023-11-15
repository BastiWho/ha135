# Infrastruktur README

Diese Terraform-Konfiguration richtet die folgende Infrastruktur in AWS ein:

- VPC (Virtual Private Cloud)
- Subnetz innerhalb des VPC
- Internet Gateway für den Internetzugang
- Routentabelle für die Routenführung von Datenverkehr
- EC2-Instanzen mit zugehöriger Sicherheitsgruppe

## Voraussetzungen

- Installiertes Terraform
- Konfigurierte AWS CLI mit den entsprechenden Anmeldedaten

## Erklärung der einzelnen Dateien:

- `ec2.tf`: Erstellen der einzelnen EC2 Instanzen
- `igw.tf`: Erstellen des Internet Gateways mit den dazugehörigen Routingtabellen
- `sg.tf`: Erstellen der Sicherheitsgruppen für die EC2 Instanzen
- `subnet.tf`: Erstellen der Subnetze
- `vpc.tf`: Erstellen der VPC

## Konfiguration

1. Aktualisieren Sie die Daten in der Datei `example.tfvars` nach Bedarf.
2. Führen Sie `terraform init` aus, um das Arbeitsverzeichnis zu initialisieren.
3. Führen Sie `terraform apply` aus, um die Infrastruktur zu erstellen.

## Ausgaben

- `aws_instance_public_ip`: Öffentliche IP-Adressen der erstellten EC2-Instanzen.
- `aws_instance_private_ip`: Private IP-Adressen der erstellten EC2-Instanzen.

## Aufräumen

Um die Infrastruktur zu zerstören, führen Sie folgenden Command aus:


`terraform destroy`


Stellen Sie sicher, dass alle Ressourcen vor dem Fortfahren ordnungsgemäß beendet wurden.
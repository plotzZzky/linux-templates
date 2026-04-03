#!/bin/bash


# Definir parâmetros da VM
VM_NAME="arch-vm"
MEMORY="4096"       
VCPUS="2"
DISK_PATH="/var/lib/libvirt/images/${VM_NAME}.qcow2"
DISK_SIZE="30"
ISO_PATH="archlinux-2026.04.01-x86_64.iso"
NETWORK="default"
OS_VARIANT="archlinux"


# Criar a VM com virt-install
echo "Iniciando a criação da VM..."


# virt-install script
virt-install \
  --name "$VM_NAME" \
  --memory "$MEMORY" \
  --vcpus "$VCPUS" \
  --disk path="$DISK_PATH",size="$DISK_SIZE" \
  --cdrom "$ISO_PATH" \
  --os-variant "$OS_VARIANT" \
  --network network="$NETWORK" \
  --graphics vnc,listen=0.0.0.0 \
  --boot cdrom,hd

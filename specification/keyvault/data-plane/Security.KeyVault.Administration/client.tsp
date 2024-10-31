// client.tsp
import "./main.tsp";
import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;
//using KeyVault;

@TypeSpec.Versioning.useDependency(KeyVault.Versions.`v7.6_preview.1`)

namespace ClientCustomizations;

@@clientName(KeyVault.Setting,"KeyVaultSetting", "csharp");
@@clientName(KeyVault.Setting.value,"Content", "csharp");
@@clientName(KeyVault.Setting.type,"SettingType", "csharp");
@@clientName(KeyVault.SettingTypeEnum,"KeyVaultSettingType", "csharp");
@@clientName(KeyVault.Permission,"KeyVaultPermission", "csharp");
@@clientName(KeyVault.RoleScope,"KeyVaultRoleScope", "csharp");
@@clientName(KeyVault.RoleType,"KeyVaultRoleType", "csharp");
@@clientName(KeyVault.RoleAssignment,"KeyVaultRoleAssignment", "csharp");
@@clientName(KeyVault.FullBackupOperation,"FullBackupDetailsInternal", "csharp");
@@clientName(KeyVault.SettingsListResult, "GetSettingsResult", "csharp");
@@clientName(KeyVault.RoleAssignmentPropertiesWithScope, "KeyVaultRoleAssignmentProperties");
@@clientName(KeyVault.RoleDefinitionType, "KeyVaultRoleDefinitionType");

@client({
    name:"BackupRestoreRestClient",
    service: KeyVault,
})
interface BackupRestoreRestClient {
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    fullBackup is KeyVault.fullBackup;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    fullBackupStatus is KeyVault.fullBackupStatus;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    preFullBackup is KeyVault.preFullBackup;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    restoreStatus is KeyVault.restoreStatus;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    preFullRestoreOperation is KeyVault.preFullRestoreOperation;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    fullRestoreOperation is KeyVault.fullRestoreOperation;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    selectiveKeyRestoreOperation is KeyVault.selectiveKeyRestoreOperation;
}

@client({
    name:"RoleAssignmentsRestClient",
    service: KeyVault,
})
interface RoleAssignmentsRestClient {
    delete is KeyVault.RoleAssignments.delete;
    create is KeyVault.RoleAssignments.create;
    get is KeyVault.RoleAssignments.get;
    listForScope is KeyVault.RoleAssignments.listForScope;
}

@client({
    name:"RoleDefinitionsRestClient",
    service: KeyVault,
})
interface RoleDefinitionsRestClient {
    delete is KeyVault.RoleDefinitions.delete;
    createOrUpdate is KeyVault.RoleDefinitions.createOrUpdate;
    get is KeyVault.RoleDefinitions.get;
    list is KeyVault.RoleDefinitions.list;
}

@client({
    name:"SettingsRestClient",
    service: KeyVault,
})
interface SettingsRestClient {
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    updateSetting is KeyVault.updateSetting;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    getSetting is KeyVault.getSetting;
    #suppress "@azure-tools/typespec-azure-core/use-standard-operations" "Doesn't fit standard ops"
    getSettings is KeyVault.getSettings;
}
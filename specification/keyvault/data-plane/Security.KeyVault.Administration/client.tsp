// client.tsp
import "./main.tsp";
import "@azure-tools/typespec-client-generator-core";

using Azure.ClientGenerator.Core;
namespace KeyVault;

@@clientName(Setting,"KeyVaultSetting", "csharp");
@@clientName(Setting.value,"Content", "csharp");
@@clientName(Setting.type,"SettingType", "csharp");
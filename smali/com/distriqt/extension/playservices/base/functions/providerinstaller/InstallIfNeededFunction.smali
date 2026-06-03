.class public Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;
.super Ljava/lang/Object;
.source "InstallIfNeededFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final TAG:Ljava/lang/String; = "InstallIfNeededFunction"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    .line 41
    :try_start_0
    sget-object p2, Lcom/distriqt/extension/playservices/base/PlayServicesBase;->ID:Ljava/lang/String;

    sget-object v0, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;->TAG:Ljava/lang/String;

    const-string v1, "call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1, v2}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction$1;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction$1;-><init>(Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;Lcom/adobe/fre/FREContext;)V

    invoke-static {p2, v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeededAsync(Landroid/content/Context;Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    const-string v0, "extension:error"

    .line 73
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

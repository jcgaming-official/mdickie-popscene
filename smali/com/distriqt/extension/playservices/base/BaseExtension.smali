.class public Lcom/distriqt/extension/playservices/base/BaseExtension;
.super Ljava/lang/Object;
.source "BaseExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Lcom/adobe/fre/FREContext;

.field public static googleApiAvailabilityContext:Lcom/adobe/fre/FREContext;

.field public static providerInstallerContext:Lcom/adobe/fre/FREContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1

    const-string v0, "ProviderInstaller"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance p1, Lcom/distriqt/extension/playservices/base/ProviderInstallerContext;

    invoke-direct {p1}, Lcom/distriqt/extension/playservices/base/ProviderInstallerContext;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "GoogleApiAvailability"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 42
    new-instance p1, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;

    invoke-direct {p1}, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;-><init>()V

    goto :goto_0

    .line 46
    :cond_1
    new-instance p1, Lcom/distriqt/extension/playservices/base/PlayServicesBaseContext;

    invoke-direct {p1}, Lcom/distriqt/extension/playservices/base/PlayServicesBaseContext;-><init>()V

    :goto_0
    return-object p1
.end method

.method public dispose()V
    .locals 2

    .line 55
    sget-object v0, Lcom/distriqt/extension/playservices/base/BaseExtension;->googleApiAvailabilityContext:Lcom/adobe/fre/FREContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Lcom/distriqt/extension/playservices/base/BaseExtension;->googleApiAvailabilityContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->dispose()V

    .line 58
    sput-object v1, Lcom/distriqt/extension/playservices/base/BaseExtension;->googleApiAvailabilityContext:Lcom/adobe/fre/FREContext;

    .line 60
    :cond_0
    sget-object v0, Lcom/distriqt/extension/playservices/base/BaseExtension;->providerInstallerContext:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_1

    .line 62
    sget-object v0, Lcom/distriqt/extension/playservices/base/BaseExtension;->providerInstallerContext:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->dispose()V

    .line 63
    sput-object v1, Lcom/distriqt/extension/playservices/base/BaseExtension;->providerInstallerContext:Lcom/adobe/fre/FREContext;

    .line 65
    :cond_1
    sget-object v0, Lcom/distriqt/extension/playservices/base/BaseExtension;->context:Lcom/adobe/fre/FREContext;

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/distriqt/extension/playservices/base/BaseExtension;->context:Lcom/adobe/fre/FREContext;

    invoke-virtual {v0}, Lcom/adobe/fre/FREContext;->dispose()V

    .line 68
    sput-object v1, Lcom/distriqt/extension/playservices/base/BaseExtension;->context:Lcom/adobe/fre/FREContext;

    :cond_2
    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

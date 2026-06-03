.class public Lcom/distriqt/extension/core/CoreExtension;
.super Ljava/lang/Object;
.source "CoreExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static ID:Ljava/lang/String; = "com.distriqt.Core"

.field public static context:Lcom/adobe/fre/FREContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 32
    new-instance p1, Lcom/distriqt/extension/core/CoreContext;

    invoke-direct {p1}, Lcom/distriqt/extension/core/CoreContext;-><init>()V

    sput-object p1, Lcom/distriqt/extension/core/CoreExtension;->context:Lcom/adobe/fre/FREContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/distriqt/extension/core/CoreExtension;->context:Lcom/adobe/fre/FREContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

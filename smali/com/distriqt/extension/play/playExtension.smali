.class public Lcom/distriqt/extension/play/playExtension;
.super Ljava/lang/Object;
.source "playExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static ID:Ljava/lang/String; = "com.google.android.play"

.field public static context:Lcom/distriqt/extension/play/playContext;


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
    new-instance p1, Lcom/distriqt/extension/play/playContext;

    invoke-direct {p1}, Lcom/distriqt/extension/play/playContext;-><init>()V

    sput-object p1, Lcom/distriqt/extension/play/playExtension;->context:Lcom/distriqt/extension/play/playContext;

    .line 33
    sget-object p1, Lcom/distriqt/extension/play/playExtension;->context:Lcom/distriqt/extension/play/playContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/distriqt/extension/play/playExtension;->context:Lcom/distriqt/extension/play/playContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method

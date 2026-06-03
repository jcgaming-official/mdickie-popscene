.class public Lcom/distriqt/extension/play/controller/playController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "playController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "playController"


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/distriqt/extension/play/controller/playController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

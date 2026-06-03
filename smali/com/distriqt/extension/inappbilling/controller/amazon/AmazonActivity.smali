.class public Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonActivity;
.super Landroid/app/Activity;
.source "AmazonActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AmazonActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 0

    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 42
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonActivity;->finish()V

    return-void
.end method

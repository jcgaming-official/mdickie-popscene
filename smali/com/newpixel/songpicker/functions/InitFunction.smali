.class public Lcom/newpixel/songpicker/functions/InitFunction;
.super Ljava/lang/Object;
.source "InitFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final TAG:Ljava/lang/String; = "InitFunction"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 0

    .line 36
    sput-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->extensionContext:Lcom/adobe/fre/FREContext;

    .line 38
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 39
    sput-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->appContext:Landroid/content/Context;

    const-string p1, "InitFunction"

    const-string p2, "in init"

    .line 42
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

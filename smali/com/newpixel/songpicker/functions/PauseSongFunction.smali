.class public Lcom/newpixel/songpicker/functions/PauseSongFunction;
.super Ljava/lang/Object;
.source "PauseSongFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final TAG:Ljava/lang/String; = "PauseSongFunction"


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

    .line 37
    sget-object p1, Lcom/newpixel/songpicker/SongPickerExtension;->songMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

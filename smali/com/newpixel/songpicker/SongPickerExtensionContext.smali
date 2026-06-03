.class public Lcom/newpixel/songpicker/SongPickerExtensionContext;
.super Lcom/adobe/fre/FREContext;
.source "SongPickerExtensionContext.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SongPickerExtensionContext"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "SongPickerExtensionContext"

    const-string v1, "Context disposed."

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "init"

    .line 45
    new-instance v2, Lcom/newpixel/songpicker/functions/InitFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/InitFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pickSong"

    .line 46
    new-instance v2, Lcom/newpixel/songpicker/functions/PickSongFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/PickSongFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "playSong"

    .line 47
    new-instance v2, Lcom/newpixel/songpicker/functions/PlaySongFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/PlaySongFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "pauseSong"

    .line 48
    new-instance v2, Lcom/newpixel/songpicker/functions/PauseSongFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/PauseSongFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stopSong"

    .line 49
    new-instance v2, Lcom/newpixel/songpicker/functions/StopSongFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/StopSongFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getVolume"

    .line 50
    new-instance v2, Lcom/newpixel/songpicker/functions/GetVolumeFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/GetVolumeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setVolume"

    .line 51
    new-instance v2, Lcom/newpixel/songpicker/functions/SetVolumeFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/SetVolumeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getPlayheadTime"

    .line 52
    new-instance v2, Lcom/newpixel/songpicker/functions/GetPlayheadTimeFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/GetPlayheadTimeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "setPlayheadTime"

    .line 53
    new-instance v2, Lcom/newpixel/songpicker/functions/SetPlayheadTimeFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/SetPlayheadTimeFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fadeOut"

    .line 54
    new-instance v2, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/FadeOutSongFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fadeIn"

    .line 55
    new-instance v2, Lcom/newpixel/songpicker/functions/FadeInSongFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/FadeInSongFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isNativeMediaPickerAvailable"

    .line 56
    new-instance v2, Lcom/newpixel/songpicker/functions/IsNativeMediaPickerAvailableFunction;

    invoke-direct {v2}, Lcom/newpixel/songpicker/functions/IsNativeMediaPickerAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

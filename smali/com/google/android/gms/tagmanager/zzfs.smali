.class abstract Lcom/google/android/gms/tagmanager/zzfs;
.super Lcom/google/android/gms/tagmanager/zzbt;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzbt;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzfs;->zzc(Ljava/util/Map;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfu;->zza()Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object p1

    return-object p1
.end method

.method public zzb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract zzc(Ljava/util/Map;)V
.end method

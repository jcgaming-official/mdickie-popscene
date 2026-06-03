.class final Lcom/google/android/gms/tagmanager/zzer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# instance fields
.field private final zza:Lcom/google/android/gms/tagmanager/zzdr;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzam;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tagmanager/zzdr;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzer;->zza:Lcom/google/android/gms/tagmanager/zzdr;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzer;->zzb:Lcom/google/android/gms/internal/gtm/zzam;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zza:Lcom/google/android/gms/tagmanager/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdr;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzxv;->zzX()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzer;->zzb:Lcom/google/android/gms/internal/gtm/zzam;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzxv;->zzX()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zzb:Lcom/google/android/gms/internal/gtm/zzam;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/tagmanager/zzdr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzer;->zza:Lcom/google/android/gms/tagmanager/zzdr;

    return-object v0
.end method

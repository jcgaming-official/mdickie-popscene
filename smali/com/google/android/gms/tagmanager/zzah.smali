.class final Lcom/google/android/gms/tagmanager/zzah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzx;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzak;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzak;Lcom/google/android/gms/tagmanager/zzag;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzah;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzah;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzak;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzah;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzak;->zzg(Lcom/google/android/gms/tagmanager/zzak;)Lcom/google/android/gms/tagmanager/zzeb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzeb;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzah;->zza:Lcom/google/android/gms/tagmanager/zzak;

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzak;->zzi(Lcom/google/android/gms/tagmanager/zzak;J)V

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzah;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzak;->zzo(Ljava/lang/String;)V

    return-void
.end method

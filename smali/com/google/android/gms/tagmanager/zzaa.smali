.class final Lcom/google/android/gms/tagmanager/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzx;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tagmanager/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzaa;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzak;->zzh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()V
    .locals 2

    const-string v0, "GoogleTagManager"

    const-string v1, "Refresh ignored: container loaded as default only."

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzaa;->zza:Lcom/google/android/gms/tagmanager/zzak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/zzak;->zzo(Ljava/lang/String;)V

    return-void
.end method

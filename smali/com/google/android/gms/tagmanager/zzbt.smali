.class abstract Lcom/google/android/gms/tagmanager/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-v4-impl@@18.0.4"


# instance fields
.field private final zzr:Ljava/util/Set;

.field private final zzs:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbt;->zzs:Ljava/lang/String;

    new-instance p1, Ljava/util/HashSet;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzbt;->zzr:Ljava/util/Set;

    const/4 p1, 0x0

    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 2
    aget-object v0, p2, p1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzbt;->zzr:Ljava/util/Set;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract zza(Ljava/util/Map;)Lcom/google/android/gms/internal/gtm/zzam;
.end method

.method public abstract zzb()Z
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbt;->zzs:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbt;->zzr:Ljava/util/Set;

    return-object v0
.end method

.method final zzg(Ljava/util/Set;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzbt;->zzr:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

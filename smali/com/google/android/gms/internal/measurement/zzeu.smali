.class final Lcom/google/android/gms/internal/measurement/zzeu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.2.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/measurement/zzew<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/measurement/zzeu;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzhg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzhg<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzb:Z

.field private zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 279
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzeu;->zzd:Lcom/google/android/gms/internal/measurement/zzeu;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzhg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzhg<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zza(I)Lcom/google/android/gms/internal/measurement/zzhg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>(Lcom/google/android/gms/internal/measurement/zzhg;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzew;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzew<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 248
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzew;->zzb()Lcom/google/android/gms/internal/measurement/zzik;

    const/4 p0, 0x0

    throw p0
.end method

.method public static zza()Lcom/google/android/gms/internal/measurement/zzeu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzew<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/measurement/zzeu<",
            "TT;>;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzeu;->zzd:Lcom/google/android/gms/internal/measurement/zzeu;

    return-object v0
.end method

.method private static zza(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzew<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 75
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzew;

    .line 76
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzew;->zzc()Lcom/google/android/gms/internal/measurement/zzir;

    const/4 p0, 0x0

    throw p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzew;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzew;->zzd()Z

    const/4 p1, 0x0

    throw p1
.end method

.method private final zzb(Ljava/util/Map$Entry;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew;

    .line 106
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 107
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzfr;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 108
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfr;->zza()Lcom/google/android/gms/internal/measurement/zzgm;

    throw v2

    .line 109
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzew;->zzd()Z

    throw v2
.end method

.method private static zzc(Ljava/util/Map$Entry;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 202
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzew;

    .line 203
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 204
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzew;->zzc()Lcom/google/android/gms/internal/measurement/zzir;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 267
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzeu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzeu;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 276
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzc:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zzeu;->zzc:Z

    return-object v0

    .line 273
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 274
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzew;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb(Lcom/google/android/gms/internal/measurement/zzew;Ljava/lang/Object;)V

    throw v2

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 271
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzew;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb(Lcom/google/android/gms/internal/measurement/zzew;Ljava/lang/Object;)V

    throw v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 20
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzeu;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 22
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzeu;

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzhg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzeu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzeu<",
            "TT;>;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 93
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb(Ljava/util/Map$Entry;)V

    throw v1

    .line 91
    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzeu;->zzb(Ljava/util/Map$Entry;)V

    throw v1
.end method

.method public final zzb()V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzb:Z

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zza()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzb:Z

    return-void
.end method

.method public final zzc()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzb:Z

    return v0
.end method

.method public final zzd()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzc:Z

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhg;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final zze()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zzc:Z

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfs;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzhg;->zze()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfs;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zze()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzeu;->zza(Ljava/util/Map$Entry;)Z

    throw v1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzeu;->zza(Ljava/util/Map$Entry;)Z

    throw v1
.end method

.method public final zzg()I
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzc()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhg;->zzd()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzeu;->zzc(Ljava/util/Map$Entry;)I

    throw v1

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzeu;->zza:Lcom/google/android/gms/internal/measurement/zzhg;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/zzhg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzeu;->zzc(Ljava/util/Map$Entry;)I

    throw v1
.end method

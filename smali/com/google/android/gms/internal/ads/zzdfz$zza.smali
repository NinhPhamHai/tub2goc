.class final enum Lcom/google/android/gms/internal/ads/zzdfz$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@18.3.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdfz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/zzdfz$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzgwe:Lcom/google/android/gms/internal/ads/zzdfz$zza;

.field public static final enum zzgwf:Lcom/google/android/gms/internal/ads/zzdfz$zza;

.field private static final synthetic zzgwg:[Lcom/google/android/gms/internal/ads/zzdfz$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfz$zza;

    const/4 v1, 0x0

    const-string v2, "OUTPUT_FUTURE_DONE"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdfz$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfz$zza;->zzgwe:Lcom/google/android/gms/internal/ads/zzdfz$zza;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdfz$zza;

    const/4 v2, 0x1

    const-string v3, "ALL_INPUT_FUTURES_PROCESSED"

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdfz$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfz$zza;->zzgwf:Lcom/google/android/gms/internal/ads/zzdfz$zza;

    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzdfz$zza;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdfz$zza;->zzgwe:Lcom/google/android/gms/internal/ads/zzdfz$zza;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdfz$zza;->zzgwf:Lcom/google/android/gms/internal/ads/zzdfz$zza;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdfz$zza;->zzgwg:[Lcom/google/android/gms/internal/ads/zzdfz$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdfz$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdfz$zza;->zzgwg:[Lcom/google/android/gms/internal/ads/zzdfz$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdfz$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdfz$zza;

    return-object v0
.end method

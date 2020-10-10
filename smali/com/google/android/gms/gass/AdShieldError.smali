.class public Lcom/google/android/gms/gass/AdShieldError;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@18.3.0"


# instance fields
.field private final errorCode:I

.field private final zzcxy:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/gass/AdShieldError;->errorCode:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/gass/AdShieldError;->zzcxy:Ljava/lang/String;

    return-void
.end method

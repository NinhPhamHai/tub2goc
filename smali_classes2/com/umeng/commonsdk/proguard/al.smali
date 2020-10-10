.class public Lcom/umeng/commonsdk/proguard/al;
.super Lcom/umeng/commonsdk/proguard/r;
.source "TProtocolException.java"


# instance fields
.field protected g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/r;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/umeng/commonsdk/proguard/al;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/r;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/umeng/commonsdk/proguard/al;->g:I

    return-void
.end method

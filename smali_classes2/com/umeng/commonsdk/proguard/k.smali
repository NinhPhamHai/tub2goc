.class public Lcom/umeng/commonsdk/proguard/k;
.super Lcom/umeng/commonsdk/proguard/r;
.source "TApplicationException.java"


# static fields
.field private static final j:Lcom/umeng/commonsdk/proguard/ap;

.field private static final k:Lcom/umeng/commonsdk/proguard/af;

.field private static final l:Lcom/umeng/commonsdk/proguard/af;


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/umeng/commonsdk/proguard/ap;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ap;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/k;->j:Lcom/umeng/commonsdk/proguard/ap;

    .line 35
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/k;->k:Lcom/umeng/commonsdk/proguard/af;

    .line 36
    new-instance v0, Lcom/umeng/commonsdk/proguard/af;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/af;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/k;->l:Lcom/umeng/commonsdk/proguard/af;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/r;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/umeng/commonsdk/proguard/k;->i:I

    return-void
.end method

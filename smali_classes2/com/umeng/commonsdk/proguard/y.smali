.class public Lcom/umeng/commonsdk/proguard/y;
.super Ljava/lang/Object;
.source "FieldValueMetaData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(B)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/umeng/commonsdk/proguard/y;-><init>(BZ)V

    return-void
.end method

.method public constructor <init>(BZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/y;->b:B

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/y;->a:Z

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/y;->c:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lcom/umeng/commonsdk/proguard/y;->d:Z

    return-void
.end method

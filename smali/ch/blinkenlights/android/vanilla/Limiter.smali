.class public Lch/blinkenlights/android/vanilla/Limiter;
.super Ljava/lang/Object;
.source "Limiter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x41a33fdb17e19e76L


# instance fields
.field public final data:Ljava/lang/Object;

.field public final names:[Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(I[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lch/blinkenlights/android/vanilla/Limiter;->type:I

    .line 61
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/Limiter;->names:[Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lch/blinkenlights/android/vanilla/Limiter;->data:Ljava/lang/Object;

    return-void
.end method

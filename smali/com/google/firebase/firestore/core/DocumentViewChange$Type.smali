.class public final enum Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/DocumentViewChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/DocumentViewChange$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const/4 v1, 0x0

    const-string v2, "REMOVED"

    invoke-direct {v0, v2, v1}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 27
    new-instance v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const/4 v2, 0x1

    const-string v3, "ADDED"

    invoke-direct {v0, v3, v2}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 28
    new-instance v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const/4 v3, 0x2

    const-string v4, "MODIFIED"

    invoke-direct {v0, v4, v3}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 29
    new-instance v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const/4 v4, 0x3

    const-string v5, "METADATA"

    invoke-direct {v0, v5, v4}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const/4 v0, 0x4

    .line 25
    new-array v0, v0, [Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    sget-object v5, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->$VALUES:[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    .locals 1

    .line 25
    const-class v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->$VALUES:[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    return-object v0
.end method

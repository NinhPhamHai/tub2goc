.class public final Lcom/google/firestore/v1/Cursor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firestore/v1/CursorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Cursor;",
        "Lcom/google/firestore/v1/Cursor$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CursorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 373
    invoke-static {}, Lcom/google/firestore/v1/Cursor;->access$000()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Cursor$1;)V
    .locals 0

    .line 366
    invoke-direct {p0}, Lcom/google/firestore/v1/Cursor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$300(Lcom/google/firestore/v1/Cursor;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setBefore(Z)Lcom/google/firestore/v1/Cursor$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 567
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Cursor;->access$1000(Lcom/google/firestore/v1/Cursor;Z)V

    return-object p0
.end method

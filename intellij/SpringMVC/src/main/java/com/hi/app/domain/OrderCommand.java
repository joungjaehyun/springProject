package com.hi.app.domain;

import lombok.*;

import java.util.List;

@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
@ToString
public class OrderCommand {
   private List<OrderItem> orderItems;
   private Address address;
}

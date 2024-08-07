//
//  AdminReportView.swift
//  NRT in C5
//
//  Created by EVIE on 6/30/24.
//

import SwiftUI
import SwiftData

struct AdminReportView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var reports: [ReportModel]

    var body: some View {
        VStack {
            if reports.isEmpty {
                Text("No reports available")
            } else {
                List(reports, id: \.id) { report in
                    VStack(alignment: .leading) {
                        Text("Category: \(report.category)")
                        Text("Date: \(report.date.toString(by: "YYYY년 M월 d일 HH:MM"))")
                        Text("Toilet Section: \(report.toiletSection)")
                        Text("Washbasin Section: \(report.washbasinSection)")
                        Text("Gender: \(report.gender)")
                        Text("Floor: \(report.floor)")
                        Text("Reports: \(report.reports.joined(separator: ", "))")
                    }
                }
            }
        }
    }
}

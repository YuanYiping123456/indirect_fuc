function draw_UpandDownforward_reserve(ben_seq_sr⁺, ben_seq_sr⁻, seq_sr⁺, seq_sr⁻, re_seq_sr⁺, re_seq_sr⁻)
	#! ---- figures
	p1 = Plots.plot(ben_seq_sr⁺,
		size = (300, 280),
		framestyle = :box,
		xlims = (0, 25),
		ylims = (0, 1.8),
		xlabel = L"t / h",
		ylabel = "Power / p.u.",
		markershape = :circle,
		markercolor = :white,
		markerstrokewidth = 2,
		lw = 2.0,
		grid = :off,
		markerstrokecolor = :orange,
		lc = :orange,
		# tickfontfamily = "Palatino Bold",
		labelfontfamily = "Palation Bold",
		legendfontfamily = "Palatino Bold",
		# fa=0.5,
		label = "benchmark")
	p1 = Plots.plot!(seq_sr⁺,
		label = "upforward flexiramp",
		linewidth = 0.5,
		markershape = :rect,
		lw = 2.0,
		markercolor = :white,
		markerstrokewidth = 2,
		markerstrokecolor = :lightblue,
		# markerstrokecolor = :lightblue,
		lc = :lightblue,
		linestyle = :dash,
		color = :red)
	p1 = Plots.plot!(re_seq_sr⁺,
		label = "actual upforward flexiramp",
		linewidth = 0.5,
		markershape = :diamond,
		markercolor = :white,
		markerstrokecolor = :lightgreen,
		markerstrokewidth = 2,
		lw = 2.0,
		lc = :lightgreen,
		linestyle = :dot,
		color = :green)

	p2 = Plots.plot(ben_seq_sr⁻,
		size = (300, 280),
		framestyle = :box,
		xlims = (0, 25),
		ylims = (0.0, 1.20),
		xlabel = L"t / h",
		ylabel = "Power / p.u.",
		markershape = :circle,
		markercolor = :white,
		markerstrokewidth = 2,
		grid = :off,
		lw = 2.0,
		markerstrokecolor = :orange,
		lc = :orange,
		# tickfontfamily = "Palatino Bold",
		labelfontfamily = "Palation Bold",
		legendfontfamily = "Palatino Bold",
		# fa=0.5,
		label = "benchmark")
	p2 = Plots.plot!(seq_sr⁻,
		label = "downforward flexiramp",
		linewidth = 0.5,
		markershape = :rect,
		lw = 2.0,
		markercolor = :white,
		markerstrokewidth = 2,
		markerstrokecolor = :lightblue,
		# markerstrokecolor = :lightblue,
		lc = :lightblue,
		linestyle = :dash,
		color = :red)
	p2 = Plots.plot!(re_seq_sr⁻,
		label = "actual downforward flexiramp",
		linewidth = 0.5,
		markershape = :diamond,
		markercolor = :white,
		markerstrokecolor = :lightgreen,
		markerstrokewidth = 2,
		lw = 2.0,
		lc = :lightgreen,
		linestyle = :dot,
		color = :green)
	p3 = Plots.plot(p1, p2, legendframon = false, size = (550, 280), Layout = (1, 2))
	filepath = pwd()
	Plots.savefig(p3, filepath * "/benchmark/fig/flexiramp.pdf")
	Plots.savefig(p3, filepath * "/benchmark/fig/flexiramp.svg")
	return p3
end
